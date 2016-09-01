n = int(input())
for i in range(n):
    s = input()
    #末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
    if s[-1]=="s" or s[-2:]=="sh" or s[-2:]=="ch" or s[-1]=="o" or s[-1]=="x":
        print(s+"es")
    #末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
    elif s[-1]=="f":
        print(s[:-1]+"ves")
    elif s[-2:]=="fe":
        print(s[:-2]+"ves")
    #末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
    elif s[-1]=="y" and s[-2]!="a" and s[-2]!="i" and s[-2]!="u" and s[-2]!="e" and s[-2]!="o":
        print(s[:-1]+"ies")
    else:
    #上のいずれの条件にも当てはまらない英単語の末尾には s を付ける
        print(s+"s")
