.class public Lcom/yandex/metrica/impl/ob/Mg$c;
.super Lcom/yandex/metrica/impl/ob/Hg$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Hg$a<",
        "Lcom/yandex/metrica/impl/ob/Mg;",
        "Lcom/yandex/metrica/impl/ob/Mg$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/yandex/metrica/impl/ob/I;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mn;-><init>()V

    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/Mg$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/I;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/I;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Hg$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/mn;)V

    .line 3
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Mg$c;->d:Lcom/yandex/metrica/impl/ob/I;

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/Eg;
    .locals 2

    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/Mg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;-><init>(Lcom/yandex/metrica/impl/ob/Mg$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Eg;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Eg$c;

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Hg$a;->a(Lcom/yandex/metrica/impl/ob/Eg$c;)Lcom/yandex/metrica/impl/ob/Hg;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Mg;

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->s()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Mg;->c(Ljava/util/List;)V

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->b(Ljava/util/List;)V

    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Mg$b;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Mg$b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->a(Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Mg$b;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Mg$b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->b(Lcom/yandex/metrica/impl/ob/Mg;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Mg$b;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Mg$b;->f:Ljava/util/Map;

    .line 10
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->a(Ljava/util/Map;)V

    .line 11
    new-instance v2, Lcom/yandex/metrica/impl/ob/v3$a;

    sget-object v3, Lcom/yandex/metrica/impl/ob/u0;->c:Lcom/yandex/metrica/impl/ob/u0;

    invoke-direct {v2, v1, v3}, Lcom/yandex/metrica/impl/ob/v3$a;-><init>(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/u0;)V

    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mg$c;->d:Lcom/yandex/metrica/impl/ob/I;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/r0;->a(Lcom/yandex/metrica/impl/ob/v0;)Lcom/yandex/metrica/impl/ob/v0;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/v3$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->a(Lcom/yandex/metrica/impl/ob/v3$a;)V

    .line 13
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Mg$b;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Mg$b;->g:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->a(Z)V

    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Mg$b;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Mg$b;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->a(Ljava/util/List;)V

    .line 15
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->b(Z)V

    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Mg;->h(Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Mg;->b(J)V

    return-object v0
.end method
