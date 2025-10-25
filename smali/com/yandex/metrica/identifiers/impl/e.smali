.class public final Lcom/yandex/metrica/identifiers/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/identifiers/impl/d;

.field private final b:Lid/l;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/identifiers/impl/w;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lid/l;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceShortTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/metrica/identifiers/impl/d;

    invoke-direct {v2, p1, p3}, Lcom/yandex/metrica/identifiers/impl/d;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[AdInServiceConnectionController-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/yandex/metrica/identifiers/impl/w;

    invoke-direct {v6}, Lcom/yandex/metrica/identifiers/impl/w;-><init>()V

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/identifiers/impl/e;-><init>(Lcom/yandex/metrica/identifiers/impl/d;Lid/l;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/identifiers/impl/w;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/identifiers/impl/d;Lid/l;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/identifiers/impl/w;)V
    .locals 1

    .line 2
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "serviceShortTag"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "safePackageManager"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/identifiers/impl/e;->a:Lcom/yandex/metrica/identifiers/impl/d;

    iput-object p2, p0, Lcom/yandex/metrica/identifiers/impl/e;->b:Lid/l;

    iput-object p4, p0, Lcom/yandex/metrica/identifiers/impl/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/metrica/identifiers/impl/e;->d:Lcom/yandex/metrica/identifiers/impl/w;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/e;->a:Lcom/yandex/metrica/identifiers/impl/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/yandex/metrica/identifiers/impl/d;->a()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "connection.intent"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/identifiers/impl/e;->d:Lcom/yandex/metrica/identifiers/impl/w;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-object v0, v1

    .line 34
    :goto_0
    const-string v2, " services"

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/e;->a:Lcom/yandex/metrica/identifiers/impl/d;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/identifiers/impl/d;->c(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/yandex/metrica/identifiers/impl/e;->a:Lcom/yandex/metrica/identifiers/impl/d;

    .line 47
    .line 48
    const-wide/16 v3, 0xbb8

    .line 49
    .line 50
    invoke-virtual {p1, v3, v4}, Lcom/yandex/metrica/identifiers/impl/d;->b(J)Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :catchall_1
    :cond_0
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/identifiers/impl/e;->b:Lid/l;

    .line 57
    .line 58
    invoke-interface {p1, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_1
    new-instance p1, Lcom/yandex/metrica/identifiers/impl/j;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "could not bind to "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/yandex/metrica/identifiers/impl/e;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Lcom/yandex/metrica/identifiers/impl/j;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    new-instance p1, Lcom/yandex/metrica/identifiers/impl/m;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "could not resolve "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/yandex/metrica/identifiers/impl/e;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Lcom/yandex/metrica/identifiers/impl/m;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/identifiers/impl/e;->a:Lcom/yandex/metrica/identifiers/impl/d;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/identifiers/impl/d;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return-void
.end method
