.class public Lcom/yandex/metrica/impl/ob/Ld;
.super Lcom/yandex/metrica/impl/ob/Kd;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final l:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final m:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final n:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final o:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final p:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final q:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final r:Lcom/yandex/metrica/impl/ob/Rd;


# instance fields
.field private f:Lcom/yandex/metrica/impl/ob/Rd;

.field private g:Lcom/yandex/metrica/impl/ob/Rd;

.field private h:Lcom/yandex/metrica/impl/ob/Rd;

.field private i:Lcom/yandex/metrica/impl/ob/Rd;

.field private j:Lcom/yandex/metrica/impl/ob/Rd;

.field private k:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    const-string v1, "UUID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    .line 13
    const-string v1, "DEVICEID_3"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 19
    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 21
    .line 22
    const-string v1, "AD_URL_GET"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 28
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 30
    .line 31
    const-string v1, "AD_URL_REPORT"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 37
    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 39
    .line 40
    const-string v1, "HOST_URL"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 46
    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 48
    .line 49
    const-string v1, "SERVER_TIME_OFFSET"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 55
    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 57
    .line 58
    const-string v1, "CLIDS"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ld;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 64
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Kd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 6
    .line 7
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 17
    .line 18
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 19
    .line 20
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 30
    .line 31
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 32
    .line 33
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 43
    .line 44
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 45
    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 56
    .line 57
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 58
    .line 59
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 69
    .line 70
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 80
    .line 81
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 82
    .line 83
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ld;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ld;->k:Lcom/yandex/metrica/impl/ob/Rd;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ld;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ld;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ld;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "_startupinfopreferences"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ld;->k:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ld;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public f()Lcom/yandex/metrica/impl/ob/Ld;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Kd;->e()Lcom/yandex/metrica/impl/ob/Kd;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Ld;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ld;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
