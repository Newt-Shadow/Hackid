.class public Lcom/yandex/metrica/impl/ob/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cj;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gj;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gj;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 7
    .line 8
    return-void
.end method

.method private b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gj;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gj;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/B0;->c(Landroid/content/Context;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "metrica_data.db"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/gj;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    const/4 v3, 0x1

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/16 v4, 0x15

    .line 34
    .line 35
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gj;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/gj;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 57
    .line 58
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v0, v4

    .line 62
    :goto_1
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    move v0, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v0, v2

    .line 73
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gj;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/gj;->a:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    move v2, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v2, v0

    .line 97
    :cond_5
    :goto_3
    return v2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/gj;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method
