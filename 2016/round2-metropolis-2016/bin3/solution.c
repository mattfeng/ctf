int __cdecl verify(signed int a1, int a2)
{
  int v2; // edi@2
  signed int v3; // ecx@2
  bool v4; // zf@4
  int result; // eax@5
  int v6; // ST08_4@8
  signed int v7; // ST04_4@8
  signed int v8; // ST00_4@8
  signed int v9; // eax@6
  bool v10; // dl@8
  int v11; // [sp+Ch] [bp-20h]@6

  if ( a2 )
  {
    v2 = a2;
    v3 = -1;
    do
    {
      if ( !v3 )
        break;
      v4 = *(_BYTE *)v2++ == 0;
      --v3;
    }
    while ( !v4 );
    result = 0;
    if ( v3 == -17 )
    {
      v11 = rand();
      v9 = a1 + 15;
      if ( a1 >= 0 )
        v9 = a1;
      v10 = *(_BYTE *)a2 != byte_8048D26[v11 == -1];
      v8 = a1 >> 31;
      v7 = (unsigned __int64)(1717986919 * a1) >> 32;
      v6 = a1 % 23;
      result = !v10
            && *(_BYTE *)(a2 + 12) == (a1 % 19 + v6 + a1 % 11) % 10 + 48
            && *(_BYTE *)(a2 + 11) == (a1 / 9 + 4 * v6) % 10 + 48
            && *(_BYTE *)(a2 + 6) == (signed int)(((v7 >> 3) - v8) % 30
                                                + ((((unsigned int)(((v7 >> 1) - v8) >> 31) >> 30)
                                                  + (unsigned __int8)(v7 >> 1)
                                                  - (_BYTE)v8) & 3)
                                                - ((unsigned int)(((v7 >> 1) - v8) >> 31) >> 30))
                                   % 26
                                   + 65
            && *(_BYTE *)(a2 + 14) == (a1 / 2340 + 238) % 10 + 48
            && *(_BYTE *)(a2 + 13) == a1 / 345 % 10 + 48
            && *(_BYTE *)(a2 + 9) == (v9 >> 4) % (a1 / 50) % 26 + 65
            && *(_BYTE *)(a2 + 8) == (a1 % 100 + a1 % 10) % 26 + 65
            && *(_BYTE *)(a2 + 5) == *(_BYTE *)(a2 + 10)
            && *(_BYTE *)(a2 + 5) == '-'
            && *(_BYTE *)(a2 + 4) == 'O'
            && *(_BYTE *)(a2 + 3) == 'R'
            && *(_BYTE *)(a2 + 1) == 'E'
            && *(_BYTE *)(a2 + 2) == 'T'
            && *(_BYTE *)(a2 + 7) == (a1 / 6 % 6 + 6 * ((v7 >> 4) - v8) + 6) % 26 + 65;
    }
  }
  else
  {
    result = 0;
  }
  return result;
}
