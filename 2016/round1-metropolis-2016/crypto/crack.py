import hackercodecs


string = "M29kt21ntaoyKKvlAYFnteFdue5dRUTzQe91vUTrROF1ued0wK4yN2zdtaT3RKTdtOXhtUTdQOFgAY90sYNqDUT3RKTmRONcAZJnAZNrRKTzAYFnRYMm"

plaintext =
"U29sb21vbiwgSSdtIGNvbmNlcm5lZCBhYm91dCBzZWN1cml0eS4gV2hlbiB3ZSBlbWFpbCBlYWNo\nIG90aGVyLCB3ZSBuZWVkIHRvIHVzZSBhIGNvZGUu"

for i in range(1, 26):
    dec = string.decode('base64')

    try:

        print dec.decode('rot' + str(i))

    except:
        pass

