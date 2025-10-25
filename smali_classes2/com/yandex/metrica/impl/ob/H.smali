.class public Lcom/yandex/metrica/impl/ob/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/c9;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/impl/ob/mn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/c9;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/H;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/c9;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/H;->b:Lcom/yandex/metrica/impl/ob/c9;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/H;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/H;->d:Lcom/yandex/metrica/impl/ob/mn;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H;->b:Lcom/yandex/metrica/impl/ob/c9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->h()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    :try_start_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H;->d:Lcom/yandex/metrica/impl/ob/mn;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/H;->a:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/H;->c:Ljava/lang/String;

    .line 31
    .line 32
    const/high16 v4, 0x8000000

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/mn;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/fo;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/go;->a(Landroid/content/pm/SigningInfo;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ho;->a(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/io;->a(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H;->d:Lcom/yandex/metrica/impl/ob/mn;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/H;->a:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/H;->c:Ljava/lang/String;

    .line 63
    .line 64
    const/16 v4, 0x40

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/mn;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 71
    .line 72
    :goto_0
    if-eqz v1, :cond_3

    .line 73
    .line 74
    array-length v2, v1

    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_1
    if-ge v3, v2, :cond_3

    .line 77
    .line 78
    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    .line 80
    :try_start_1
    const-string v5, "SHA1"

    .line 81
    .line 82
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->a([B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v5, "(.{2})(?=.+)"

    .line 105
    .line 106
    const-string v6, "$1:"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    const/4 v4, 0x0

    .line 114
    :goto_2
    if-eqz v4, :cond_2

    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .line 118
    .line 119
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_1
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H;->b:Lcom/yandex/metrica/impl/ob/c9;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/c9;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/c9;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 138
    .line 139
    .line 140
    :cond_4
    return-object v0
.end method
