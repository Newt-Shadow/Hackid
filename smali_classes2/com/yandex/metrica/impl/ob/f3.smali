.class public final Lcom/yandex/metrica/impl/ob/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lzb/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.android.billingclient.BuildConfig"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "VERSION_NAME"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v0

    .line 24
    :goto_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-object v1, v0

    .line 28
    :goto_1
    if-nez v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Lzb/b;->c:Lzb/b;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const-string v2, "2."

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-static {v1, v2, v3, v4, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sget-object v0, Lzb/b;->a:Lzb/b;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const-string v2, "3."

    .line 47
    .line 48
    invoke-static {v1, v2, v3, v4, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    sget-object v0, Lzb/b;->a:Lzb/b;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const-string v2, "4."

    .line 58
    .line 59
    invoke-static {v1, v2, v3, v4, v0}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    sget-object v0, Lzb/b;->b:Lzb/b;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    sget-object v0, Lzb/b;->b:Lzb/b;

    .line 69
    .line 70
    :goto_2
    return-object v0
.end method
