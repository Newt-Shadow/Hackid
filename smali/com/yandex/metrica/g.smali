.class public Lcom/yandex/metrica/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Sf;

.field private final b:Lcom/yandex/metrica/impl/ob/D2;

.field private final c:Lcom/yandex/metrica/impl/ob/q;

.field private final d:Lcom/yandex/metrica/impl/ob/o2;

.field private final e:Lcom/yandex/metrica/impl/ob/a0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/D2;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->b()Lcom/yandex/metrica/impl/ob/q;

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->l()Lcom/yandex/metrica/impl/ob/o2;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->e()Lcom/yandex/metrica/impl/ob/a0;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/g;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/D2;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/ob/o2;Lcom/yandex/metrica/impl/ob/a0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/D2;Lcom/yandex/metrica/impl/ob/q;Lcom/yandex/metrica/impl/ob/o2;Lcom/yandex/metrica/impl/ob/a0;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/g;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/g;->b:Lcom/yandex/metrica/impl/ob/D2;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/g;->c:Lcom/yandex/metrica/impl/ob/q;

    .line 9
    iput-object p4, p0, Lcom/yandex/metrica/g;->d:Lcom/yandex/metrica/impl/ob/o2;

    .line 10
    iput-object p5, p0, Lcom/yandex/metrica/g;->e:Lcom/yandex/metrica/impl/ob/a0;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/yandex/metrica/impl/ob/q$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/g;->c:Lcom/yandex/metrica/impl/ob/q;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/q;->a(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/yandex/metrica/g;->d:Lcom/yandex/metrica/impl/ob/o2;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/o2;->a()Lcom/yandex/metrica/impl/ob/q$c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/g;->e:Lcom/yandex/metrica/impl/ob/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a0;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/yandex/metrica/j;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/g;->e:Lcom/yandex/metrica/impl/ob/a0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a0;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p2, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 9
    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/g;->d:Lcom/yandex/metrica/impl/ob/o2;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/o2;->a()Lcom/yandex/metrica/impl/ob/q$c;

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/g;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/R2;->b(Lcom/yandex/metrica/j;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public d(Landroid/webkit/WebView;Lcom/yandex/metrica/impl/ob/Uf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/g;->b:Lcom/yandex/metrica/impl/ob/D2;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/D2;->a(Landroid/webkit/WebView;Lcom/yandex/metrica/impl/ob/Uf;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/g;->e:Lcom/yandex/metrica/impl/ob/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a0;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/g;->e:Lcom/yandex/metrica/impl/ob/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a0;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
