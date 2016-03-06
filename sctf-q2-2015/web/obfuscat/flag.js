#!/usr/bin/js

var MersenneTwister = function(seed) {
    if (seed == undefined) {
        seed = new Date().getTime();
    } 
    /* Period parameters */  
    this.N = 624;
    this.M = 397;
    this.MATRIX_A = 0x9908b0df;   /* constant vector a */
    this.UPPER_MASK = 0x80000000; /* most significant w-r bits */
    this.LOWER_MASK = 0x7fffffff; /* least significant r bits */

    this.mt = new Array(this.N); /* the array for the state vector */
    this.mti=this.N+1; /* mti==N+1 means mt[N] is not initialized */

    this.init_genrand(seed);
}  

/* initializes mt[N] with a seed */
MersenneTwister.prototype.init_genrand = function(s) {
    this.mt[0] = s >>> 0;
    for (this.mti=1; this.mti<this.N; this.mti++) {
        var s = this.mt[this.mti-1] ^ (this.mt[this.mti-1] >>> 30);
        this.mt[this.mti] = (((((s & 0xffff0000) >>> 16) * 1812433253) << 16) + (s & 0x0000ffff) * 1812433253)
            + this.mti;
        /* See Knuth TAOCP Vol2. 3rd Ed. P.106 for multiplier. */
        /* In the previous versions, MSBs of the seed affect   */
        /* only MSBs of the array mt[].                        */
        /* 2002/01/09 modified by Makoto Matsumoto             */
        this.mt[this.mti] >>>= 0;
        /* for >32 bit machines */
    }
}

/* initialize by an array with array-length */
/* init_key is the array for initializing keys */
/* key_length is its length */
/* slight change for C++, 2004/2/26 */
MersenneTwister.prototype.init_by_array = function(init_key, key_length) {
    var i, j, k;
    this.init_genrand(19650218);
    i=1; j=0;
    k = (this.N>key_length ? this.N : key_length);
    for (; k; k--) {
        var s = this.mt[i-1] ^ (this.mt[i-1] >>> 30)
            this.mt[i] = (this.mt[i] ^ (((((s & 0xffff0000) >>> 16) * 1664525) << 16) + ((s & 0x0000ffff) * 1664525)))
            + init_key[j] + j; /* non linear */
        this.mt[i] >>>= 0; /* for WORDSIZE > 32 machines */
        i++; j++;
        if (i>=this.N) { this.mt[0] = this.mt[this.N-1]; i=1; }
        if (j>=key_length) j=0;
    }
    for (k=this.N-1; k; k--) {
        var s = this.mt[i-1] ^ (this.mt[i-1] >>> 30);
        this.mt[i] = (this.mt[i] ^ (((((s & 0xffff0000) >>> 16) * 1566083941) << 16) + (s & 0x0000ffff) * 1566083941))
            - i; /* non linear */
        this.mt[i] >>>= 0; /* for WORDSIZE > 32 machines */
        i++;
        if (i>=this.N) { this.mt[0] = this.mt[this.N-1]; i=1; }
    }

    this.mt[0] = 0x80000000; /* MSB is 1; assuring non-zero initial array */ 
}

/* generates a random number on [0,0xffffffff]-interval */
MersenneTwister.prototype.genrand_int32 = function() {
    var y;
    var mag01 = new Array(0x0, this.MATRIX_A);
    /* mag01[x] = x * MATRIX_A  for x=0,1 */

    if (this.mti >= this.N) { /* generate N words at one time */
        var kk;

        if (this.mti == this.N+1)   /* if init_genrand() has not been called, */
            this.init_genrand(5489); /* a default initial seed is used */

        for (kk=0;kk<this.N-this.M;kk++) {
            y = (this.mt[kk]&this.UPPER_MASK)|(this.mt[kk+1]&this.LOWER_MASK);
            this.mt[kk] = this.mt[kk+this.M] ^ (y >>> 1) ^ mag01[y & 0x1];
        }
        for (;kk<this.N-1;kk++) {
            y = (this.mt[kk]&this.UPPER_MASK)|(this.mt[kk+1]&this.LOWER_MASK);
            this.mt[kk] = this.mt[kk+(this.M-this.N)] ^ (y >>> 1) ^ mag01[y & 0x1];
        }
        y = (this.mt[this.N-1]&this.UPPER_MASK)|(this.mt[0]&this.LOWER_MASK);
        this.mt[this.N-1] = this.mt[this.M-1] ^ (y >>> 1) ^ mag01[y & 0x1];

        this.mti = 0;
    }

    y = this.mt[this.mti++];

    /* Tempering */
    y ^= (y >>> 11);
    y ^= (y << 7) & 0x9d2c5680;
    y ^= (y << 15) & 0xefc60000;
    y ^= (y >>> 18);

    return y >>> 0;
}

/* generates a random number on [0,0x7fffffff]-interval */
MersenneTwister.prototype.genrand_int31 = function() {
    return (this.genrand_int32()>>>1);
}

/* generates a random number on [0,1]-real-interval */
MersenneTwister.prototype.genrand_real1 = function() {
    return this.genrand_int32()*(1.0/4294967295.0); 
    /* divided by 2^32-1 */ 
}

/* generates a random number on [0,1)-real-interval */
MersenneTwister.prototype.random = function() {
    return this.genrand_int32()*(1.0/4294967296.0); 
    /* divided by 2^32 */
}

/* generates a random number on (0,1)-real-interval */
MersenneTwister.prototype.genrand_real3 = function() {
    return (this.genrand_int32() + 0.5)*(1.0/4294967296.0); 
    /* divided by 2^32 */
}

/* generates a random number on [0,1) with 53-bit resolution*/
MersenneTwister.prototype.genrand_res53 = function() { 
    var a=this.genrand_int32()>>>5, b=this.genrand_int32()>>>6; 
    return(a*67108864.0+b)*(1.0/9007199254740992.0); 
} 

var CryptoJS=CryptoJS||function(s,p){var m={},l=m.lib={},n=function(){},r=l.Base={extend:function(b){n.prototype=this;var h=new n;b&&h.mixIn(b);h.hasOwnProperty("init")||(h.init=function(){h.$super.init.apply(this,arguments)});h.init.prototype=h;h.$super=this;return h},create:function(){var b=this.extend();b.init.apply(b,arguments);return b},init:function(){},mixIn:function(b){for(var h in b)b.hasOwnProperty(h)&&(this[h]=b[h]);b.hasOwnProperty("toString")&&(this.toString=b.toString)},clone:function(){return this.init.prototype.extend(this)}},
    q=l.WordArray=r.extend({init:function(b,h){b=this.words=b||[];this.sigBytes=h!=p?h:4*b.length},toString:function(b){return(b||t).stringify(this)},concat:function(b){var h=this.words,a=b.words,j=this.sigBytes;b=b.sigBytes;this.clamp();if(j%4)for(var g=0;g<b;g++)h[j+g>>>2]|=(a[g>>>2]>>>24-8*(g%4)&255)<<24-8*((j+g)%4);else if(65535<a.length)for(g=0;g<b;g+=4)h[j+g>>>2]=a[g>>>2];else h.push.apply(h,a);this.sigBytes+=b;return this},clamp:function(){var b=this.words,h=this.sigBytes;b[h>>>2]&=4294967295<<
        32-8*(h%4);b.length=s.ceil(h/4)},clone:function(){var b=r.clone.call(this);b.words=this.words.slice(0);return b},random:function(b){for(var h=[],a=0;a<b;a+=4)h.push(4294967296*s.random()|0);return new q.init(h,b)}}),v=m.enc={},t=v.Hex={stringify:function(b){var a=b.words;b=b.sigBytes;for(var g=[],j=0;j<b;j++){var k=a[j>>>2]>>>24-8*(j%4)&255;g.push((k>>>4).toString(16));g.push((k&15).toString(16))}return g.join("")},parse:function(b){for(var a=b.length,g=[],j=0;j<a;j+=2)g[j>>>3]|=parseInt(b.substr(j,
                2),16)<<24-4*(j%8);return new q.init(g,a/2)}},a=v.Latin1={stringify:function(b){var a=b.words;b=b.sigBytes;for(var g=[],j=0;j<b;j++)g.push(String.fromCharCode(a[j>>>2]>>>24-8*(j%4)&255));return g.join("")},parse:function(b){for(var a=b.length,g=[],j=0;j<a;j++)g[j>>>2]|=(b.charCodeAt(j)&255)<<24-8*(j%4);return new q.init(g,a)}},u=v.Utf8={stringify:function(b){try{return decodeURIComponent(escape(a.stringify(b)))}catch(g){throw Error("Malformed UTF-8 data");}},parse:function(b){return a.parse(unescape(encodeURIComponent(b)))}},
        g=l.BufferedBlockAlgorithm=r.extend({reset:function(){this._data=new q.init;this._nDataBytes=0},_append:function(b){"string"==typeof b&&(b=u.parse(b));this._data.concat(b);this._nDataBytes+=b.sigBytes},_process:function(b){var a=this._data,g=a.words,j=a.sigBytes,k=this.blockSize,m=j/(4*k),m=b?s.ceil(m):s.max((m|0)-this._minBufferSize,0);b=m*k;j=s.min(4*b,j);if(b){for(var l=0;l<b;l+=k)this._doProcessBlock(g,l);l=g.splice(0,b);a.sigBytes-=j}return new q.init(l,j)},clone:function(){var b=r.clone.call(this);
            b._data=this._data.clone();return b},_minBufferSize:0});l.Hasher=g.extend({cfg:r.extend(),init:function(b){this.cfg=this.cfg.extend(b);this.reset()},reset:function(){g.reset.call(this);this._doReset()},update:function(b){this._append(b);this._process();return this},finalize:function(b){b&&this._append(b);return this._doFinalize()},blockSize:16,_createHelper:function(b){return function(a,g){return(new b.init(g)).finalize(a)}},_createHmacHelper:function(b){return function(a,g){return(new k.HMAC.init(b,
                        g)).finalize(a)}}});var k=m.algo={};return m}(Math);
(function(s){function p(a,k,b,h,l,j,m){a=a+(k&b|~k&h)+l+m;return(a<<j|a>>>32-j)+k}function m(a,k,b,h,l,j,m){a=a+(k&h|b&~h)+l+m;return(a<<j|a>>>32-j)+k}function l(a,k,b,h,l,j,m){a=a+(k^b^h)+l+m;return(a<<j|a>>>32-j)+k}function n(a,k,b,h,l,j,m){a=a+(b^(k|~h))+l+m;return(a<<j|a>>>32-j)+k}for(var r=CryptoJS,q=r.lib,v=q.WordArray,t=q.Hasher,q=r.algo,a=[],u=0;64>u;u++)a[u]=4294967296*s.abs(s.sin(u+1))|0;q=q.MD5=t.extend({_doReset:function(){this._hash=new v.init([1732584193,4023233417,2562383102,271733878])},
    _doProcessBlock:function(g,k){for(var b=0;16>b;b++){var h=k+b,w=g[h];g[h]=(w<<8|w>>>24)&16711935|(w<<24|w>>>8)&4278255360}var b=this._hash.words,h=g[k+0],w=g[k+1],j=g[k+2],q=g[k+3],r=g[k+4],s=g[k+5],t=g[k+6],u=g[k+7],v=g[k+8],x=g[k+9],y=g[k+10],z=g[k+11],A=g[k+12],B=g[k+13],C=g[k+14],D=g[k+15],c=b[0],d=b[1],e=b[2],f=b[3],c=p(c,d,e,f,h,7,a[0]),f=p(f,c,d,e,w,12,a[1]),e=p(e,f,c,d,j,17,a[2]),d=p(d,e,f,c,q,22,a[3]),c=p(c,d,e,f,r,7,a[4]),f=p(f,c,d,e,s,12,a[5]),e=p(e,f,c,d,t,17,a[6]),d=p(d,e,f,c,u,22,a[7]),
        c=p(c,d,e,f,v,7,a[8]),f=p(f,c,d,e,x,12,a[9]),e=p(e,f,c,d,y,17,a[10]),d=p(d,e,f,c,z,22,a[11]),c=p(c,d,e,f,A,7,a[12]),f=p(f,c,d,e,B,12,a[13]),e=p(e,f,c,d,C,17,a[14]),d=p(d,e,f,c,D,22,a[15]),c=m(c,d,e,f,w,5,a[16]),f=m(f,c,d,e,t,9,a[17]),e=m(e,f,c,d,z,14,a[18]),d=m(d,e,f,c,h,20,a[19]),c=m(c,d,e,f,s,5,a[20]),f=m(f,c,d,e,y,9,a[21]),e=m(e,f,c,d,D,14,a[22]),d=m(d,e,f,c,r,20,a[23]),c=m(c,d,e,f,x,5,a[24]),f=m(f,c,d,e,C,9,a[25]),e=m(e,f,c,d,q,14,a[26]),d=m(d,e,f,c,v,20,a[27]),c=m(c,d,e,f,B,5,a[28]),f=m(f,c,
                d,e,j,9,a[29]),e=m(e,f,c,d,u,14,a[30]),d=m(d,e,f,c,A,20,a[31]),c=l(c,d,e,f,s,4,a[32]),f=l(f,c,d,e,v,11,a[33]),e=l(e,f,c,d,z,16,a[34]),d=l(d,e,f,c,C,23,a[35]),c=l(c,d,e,f,w,4,a[36]),f=l(f,c,d,e,r,11,a[37]),e=l(e,f,c,d,u,16,a[38]),d=l(d,e,f,c,y,23,a[39]),c=l(c,d,e,f,B,4,a[40]),f=l(f,c,d,e,h,11,a[41]),e=l(e,f,c,d,q,16,a[42]),d=l(d,e,f,c,t,23,a[43]),c=l(c,d,e,f,x,4,a[44]),f=l(f,c,d,e,A,11,a[45]),e=l(e,f,c,d,D,16,a[46]),d=l(d,e,f,c,j,23,a[47]),c=n(c,d,e,f,h,6,a[48]),f=n(f,c,d,e,u,10,a[49]),e=n(e,f,c,d,
                    C,15,a[50]),d=n(d,e,f,c,s,21,a[51]),c=n(c,d,e,f,A,6,a[52]),f=n(f,c,d,e,q,10,a[53]),e=n(e,f,c,d,y,15,a[54]),d=n(d,e,f,c,w,21,a[55]),c=n(c,d,e,f,v,6,a[56]),f=n(f,c,d,e,D,10,a[57]),e=n(e,f,c,d,t,15,a[58]),d=n(d,e,f,c,B,21,a[59]),c=n(c,d,e,f,r,6,a[60]),f=n(f,c,d,e,z,10,a[61]),e=n(e,f,c,d,j,15,a[62]),d=n(d,e,f,c,x,21,a[63]);b[0]=b[0]+c|0;b[1]=b[1]+d|0;b[2]=b[2]+e|0;b[3]=b[3]+f|0},_doFinalize:function(){var a=this._data,k=a.words,b=8*this._nDataBytes,h=8*a.sigBytes;k[h>>>5]|=128<<24-h%32;var l=s.floor(b/
                        4294967296);k[(h+64>>>9<<4)+15]=(l<<8|l>>>24)&16711935|(l<<24|l>>>8)&4278255360;k[(h+64>>>9<<4)+14]=(b<<8|b>>>24)&16711935|(b<<24|b>>>8)&4278255360;a.sigBytes=4*(k.length+1);this._process();a=this._hash;k=a.words;for(b=0;4>b;b++)h=k[b],k[b]=(h<<8|h>>>24)&16711935|(h<<24|h>>>8)&4278255360;return a},clone:function(){var a=t.clone.call(this);a._hash=this._hash.clone();return a}});r.MD5=t._createHelper(q);r.HmacMD5=t._createHmacHelper(q)})(Math);















/*
   var flag = "flag{S$s$e$P$t$@$b$a$qu}";
   var message = "The flag is a string.".split(" ");
   var query2 = flag.split("$");

   for(var i in message) {
   if (i != false) {
   var q = message.splice(i, 1).join("");
   var h = CryptoJS.MD5(message.splice(i + 1).join("") + message.join("%"));
   var z = h.toString() + h.words.splice(0, 1);
   break;
   }
   }

   var funcs = [ String.fromCharCode, Object.getOwnPropertyNames,
   function(x) {
   return (x == query2[2]) ? 3 : x;
   },
   function(c) {
   return [ query2[4], 0x9c, 0xe6, query2[6].charCodeAt(0) * 2 ].reduce(c);
   } ];

//var m = new MersenneTwister((funcs[0]+""[0]).split(/\s/).join("").split("").map(function(x) { return x.charCodeAt(0); }).reduce(function(a, b) { return a+b; }) + 0xa0);
var m = new MersenneTwister(4744);

m.genrand_int32();
m.random();
m.genrand_int32();
m.random();
m.genrand_int32();
m.random();

console.log(m.genrand_int32())
console.log(m.random());

console.log(h.words.splice(0, 1) & 0xff);
console.log(h.words.splice(0, 1) & 0xff);
console.log(h.words.splice(0, 1) & 0xff);
console.log(h.words.splice(0, 1) & 0xff);
console.log(h.words.splice(0, 1) & 0xff);
console.log(h.words.splice(0, 1) & 0xff);

console.log(query2[1].charCodeAt(0) - 0x65)

var string = [
(function(n) { return n.split("").map(funcs[query2[5].charCodeAt(0) ^ 66]).join("") + n.charAt(query2[6].charCodeAt(0) - query2[7].charCodeAt(0));})
(funcs[1](Array.prototype).sort()[query2[1].charCodeAt(0) - 0x65].substring(0, 6)),

funcs[3](function(m, n) { return m + (funcs[0](n ^ 244)); }),

[ 181, 78, 28, query2[0].charCodeAt(0), 225, 129].map(function(x) { return funcs[0](198 ^ x); }).join("")].join("_");

console.log(string);
if (string == "r3v3rse_th1s_str1ng")
console.log("Flag: " + flag);


// s
*/


// http://md5online.net/

// HINT   |  Only query2[8] has more than one character.

try {
    var flag = "?flag{S$s$e$P$t$@$s$r$qu}";
    console.log(flag);
    console.log(flag.length);
        
    if (flag.length != 25) throw Error();
        console.log('passed length check');
    flag = flag.substring(1);
    var query = flag.split(/{|}/);

    if (query[0] != "flag") throw Error();
    // flag format: flag{xxxxxxxxxxxxxxxxxx}
    var message = ("The " + query[0] + " is a string.").split(" ");
    var query2 = query[1].split("$");

    if (query2[8].split("").map(function(k) { return k.charCodeAt(0); }).reduce(function(y, n) { return y + Math.pow(n ^ 95, 4); }) != 0x2f7b81) throw Error();
    console.log('passed last part check');

    for(var i in message) { if (i != false) { var q = message.splice(i, 1).join(""); var h = CryptoJS.MD5(message.splice(i + 1).join("") + message.join("%")); var z = h.toString() + h.words.splice(0, 1); break; } }
    var funcs = [ String.fromCharCode, Object.getOwnPropertyNames, function(x) { return (x == query2[2]) ? 3 : x; }, function(c) { return [ query2[4], 0x9c, 0xe6, ~~(query2[6].charCodeAt(0) * 2) ].reduce(c); } ];
    var m = new MersenneTwister((funcs[0]+""[~~(query2[0] / 21)]).split(/\s/).join("").split("").map(function(x) { return x.charCodeAt(0); }).reduce(function(a, b) { return a+b; }) + 0xa0);
    var string = [ (function(n) { return n.split("").map(funcs[query2[5].charCodeAt(0) ^ 66]).join("") + n.charAt(query2[6].charCodeAt(0) - query2[7].charCodeAt(0)); })(funcs[1](Array.prototype).sort()[query2[1].charCodeAt(0) - 0x65].substring(0, 6)), funcs[query2[8].charCodeAt(1) - 0x72](function(m, n) { var tmp = h.words.splice(0, 1); console.log(tmp & 0xff); return m + (funcs[0](n ^ tmp & 0xff)); }), [ 181, 78, 28, query2[0].charCodeAt(0),225, 129 ].map(function(x) { return funcs[0](((m.genrand_int32() * Math.sqrt(m.random())) & 0xff) ^ x); }).join("") ].join(funcs[0](query2[3].charCodeAt(0) + 0xF));
    console.log(string);

    if (CryptoJS.MD5(string).toString() == "0f957300a52431c2d0de0da9fc7223c9") {
        console.log("RIGHT")
    } else {
        throw Error();
    }
} catch (e) {
    console.log("WRONG")
}
