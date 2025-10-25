.class public final Lcom/yandex/metrica/identifiers/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/identifiers/impl/i;


# instance fields
.field private final a:Lcom/yandex/metrica/identifiers/impl/e;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/identifiers/impl/e;

    invoke-static {}, Lcom/yandex/metrica/identifiers/impl/s;->a()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/identifiers/impl/q;->e:Lcom/yandex/metrica/identifiers/impl/q;

    const-string v3, "huawei"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/identifiers/impl/e;-><init>(Landroid/content/Intent;Lid/l;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/identifiers/impl/r;-><init>(Lcom/yandex/metrica/identifiers/impl/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/identifiers/impl/e;)V
    .locals 1

    .line 2
    const-string v0, "connectionController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/identifiers/impl/r;->a:Lcom/yandex/metrica/identifiers/impl/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/identifiers/impl/g;
    .locals 8

    .line 1
    const-string v0, "errorMessage"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/identifiers/impl/r;->a:Lcom/yandex/metrica/identifiers/impl/e;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/identifiers/impl/e;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/yandex/metrica/identifiers/impl/v;

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/yandex/metrica/identifiers/impl/v;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v2}, Lcom/yandex/metrica/identifiers/impl/v;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-instance v4, Lcom/yandex/metrica/identifiers/impl/g;

    .line 26
    .line 27
    sget-object v5, Lcom/yandex/metrica/identifiers/impl/l;->b:Lcom/yandex/metrica/identifiers/impl/l;

    .line 28
    .line 29
    new-instance v6, Lcom/yandex/metrica/identifiers/impl/f;
    :try_end_0
    .catch Lcom/yandex/metrica/identifiers/impl/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    const-string v7, "huawei"

    .line 32
    .line 33
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v6, v7, v3, v2}, Lcom/yandex/metrica/identifiers/impl/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-direct {v4, v5, v6, v1, v2}, Lcom/yandex/metrica/identifiers/impl/g;-><init>(Lcom/yandex/metrica/identifiers/impl/l;Lcom/yandex/metrica/identifiers/impl/f;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/yandex/metrica/identifiers/impl/j; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/r;->a:Lcom/yandex/metrica/identifiers/impl/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v2

    .line 48
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "exception while fetching hoaid: "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/yandex/metrica/identifiers/impl/g;

    .line 73
    .line 74
    sget-object v3, Lcom/yandex/metrica/identifiers/impl/l;->c:Lcom/yandex/metrica/identifiers/impl/l;

    .line 75
    .line 76
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/identifiers/impl/g;-><init>(Lcom/yandex/metrica/identifiers/impl/l;Lcom/yandex/metrica/identifiers/impl/f;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v2, "unknown exception during binding huawei services"

    .line 89
    .line 90
    :goto_0
    :try_start_4
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/yandex/metrica/identifiers/impl/g;

    .line 94
    .line 95
    sget-object v3, Lcom/yandex/metrica/identifiers/impl/l;->c:Lcom/yandex/metrica/identifiers/impl/l;

    .line 96
    .line 97
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/identifiers/impl/g;-><init>(Lcom/yandex/metrica/identifiers/impl/l;Lcom/yandex/metrica/identifiers/impl/f;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    .line 99
    .line 100
    :goto_1
    move-object v4, v0

    .line 101
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/r;->a:Lcom/yandex/metrica/identifiers/impl/e;

    .line 102
    .line 103
    :goto_2
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/identifiers/impl/e;->b(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .line 105
    .line 106
    :catchall_1
    return-object v4

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    :try_start_6
    iget-object v1, p0, Lcom/yandex/metrica/identifiers/impl/r;->a:Lcom/yandex/metrica/identifiers/impl/e;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/identifiers/impl/e;->b(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 111
    .line 112
    .line 113
    :catchall_3
    throw v0
.end method
