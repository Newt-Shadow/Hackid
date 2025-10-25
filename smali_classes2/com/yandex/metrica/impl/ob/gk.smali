.class Lcom/yandex/metrica/impl/ob/gk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/vl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/gk$a;,
        Lcom/yandex/metrica/impl/ob/gk$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/kk;

.field private final b:Lcom/yandex/metrica/impl/ob/b9;

.field private final c:Lcom/yandex/metrica/impl/ob/ll;

.field private final d:Lcom/yandex/metrica/impl/ob/gk$a;

.field private final e:Z


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kk;Lcom/yandex/metrica/impl/ob/b9;ZLcom/yandex/metrica/impl/ob/ll;Lcom/yandex/metrica/impl/ob/gk$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gk;->a:Lcom/yandex/metrica/impl/ob/kk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gk;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/gk;->e:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/gk;->c:Lcom/yandex/metrica/impl/ob/ll;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/gk;->d:Lcom/yandex/metrica/impl/ob/gk$a;

    .line 13
    .line 14
    return-void
.end method

.method private b(Lcom/yandex/metrica/impl/ob/fl;)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/gk;->e:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gk;->b:Lcom/yandex/metrica/impl/ob/b9;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1
.end method


# virtual methods
.method public a(JLandroid/app/Activity;Lcom/yandex/metrica/impl/ob/dl;Ljava/util/List;Lcom/yandex/metrica/impl/ob/fl;Lcom/yandex/metrica/impl/ob/Bk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/Activity;",
            "Lcom/yandex/metrica/impl/ob/dl;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/rl;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/fl;",
            "Lcom/yandex/metrica/impl/ob/Bk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Lcom/yandex/metrica/impl/ob/gk;->b(Lcom/yandex/metrica/impl/ob/fl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gk;->d:Lcom/yandex/metrica/impl/ob/gk$a;

    iget-object v1, p6, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-boolean v0, v1, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance p5, Lcom/yandex/metrica/impl/ob/Fk;

    invoke-direct {p5}, Lcom/yandex/metrica/impl/ob/Fk;-><init>()V

    move-object v1, p5

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ck;

    invoke-direct {v0, p5}, Lcom/yandex/metrica/impl/ob/Ck;-><init>(Ljava/util/List;)V

    move-object v1, v0

    .line 7
    :goto_0
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/gk;->a:Lcom/yandex/metrica/impl/ob/kk;

    iget-object v4, p6, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 8
    invoke-virtual {p7}, Lcom/yandex/metrica/impl/ob/Bk;->a()Lcom/yandex/metrica/impl/ob/Ak;

    move-result-object v5

    move-object v2, p3

    move-object v3, p4

    move-wide v6, p1

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/pl;->a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/dl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/Ak;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/yandex/metrica/impl/ob/kk;->a(Lorg/json/JSONObject;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gk;->c:Lcom/yandex/metrica/impl/ob/ll;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/gk;->a:Lcom/yandex/metrica/impl/ob/kk;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/kk;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/yandex/metrica/impl/ob/ll;->onResult(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/wl;)V
    .locals 2

    .line 11
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/gk;->c:Lcom/yandex/metrica/impl/ob/ll;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/ll;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/fl;)Z
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/gk;->b(Lcom/yandex/metrica/impl/ob/fl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
