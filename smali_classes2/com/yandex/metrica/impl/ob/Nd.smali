.class public Lcom/yandex/metrica/impl/ob/Nd;
.super Lcom/yandex/metrica/impl/ob/Kd;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final h:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final i:Lcom/yandex/metrica/impl/ob/Rd;


# instance fields
.field private f:Lcom/yandex/metrica/impl/ob/Rd;

.field private g:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    const-string v1, "SERVICE_API_LEVEL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/Nd;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 12
    .line 13
    const-string v1, "CLIENT_API_LEVEL"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/yandex/metrica/impl/ob/Nd;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 19
    .line 20
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
    sget-object v0, Lcom/yandex/metrica/impl/ob/Nd;->h:Lcom/yandex/metrica/impl/ob/Rd;

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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Nd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 17
    .line 18
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 19
    .line 20
    sget-object v0, Lcom/yandex/metrica/impl/ob/Nd;->i:Lcom/yandex/metrica/impl/ob/Rd;

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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Nd;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "_migrationpreferences"

    return-object v0
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Kd;->b:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Nd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public g()Lcom/yandex/metrica/impl/ob/Nd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Nd;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public h()Lcom/yandex/metrica/impl/ob/Nd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Nd;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/Kd;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Kd;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
