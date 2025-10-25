.class public final Lwe/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwe/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lwe/j;
    .locals 13

    .line 1
    const-class v0, Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    const-string v1, "java.specification.version"

    .line 4
    .line 5
    const-string v2, "unknown"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    const-string v3, "jvmVersion"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/16 v3, 0x9

    .line 22
    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "org.eclipse.jetty.alpn.ALPN"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    :try_start_2
    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v5, "$Provider"

    .line 36
    .line 37
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "$ClientProvider"

    .line 46
    .line 47
    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    const-string v6, "$ServerProvider"

    .line 56
    .line 57
    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    const-string v1, "put"

    .line 66
    .line 67
    const/4 v6, 0x2

    .line 68
    new-array v6, v6, [Ljava/lang/Class;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    aput-object v0, v6, v7

    .line 72
    .line 73
    aput-object v5, v6, v4

    .line 74
    .line 75
    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const-string v1, "get"

    .line 80
    .line 81
    new-array v5, v4, [Ljava/lang/Class;

    .line 82
    .line 83
    aput-object v0, v5, v7

    .line 84
    .line 85
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    const-string v1, "remove"

    .line 90
    .line 91
    new-array v4, v4, [Ljava/lang/Class;

    .line 92
    .line 93
    aput-object v0, v4, v7

    .line 94
    .line 95
    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    new-instance v0, Lwe/e;

    .line 100
    .line 101
    const-string v1, "putMethod"

    .line 102
    .line 103
    invoke-static {v8, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "getMethod"

    .line 107
    .line 108
    invoke-static {v9, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "removeMethod"

    .line 112
    .line 113
    invoke-static {v10, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "clientProviderClass"

    .line 117
    .line 118
    invoke-static {v11, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v1, "serverProviderClass"

    .line 122
    .line 123
    invoke-static {v12, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v7, v0

    .line 127
    invoke-direct/range {v7 .. v12}, Lwe/e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :catch_1
    return-object v2
.end method
