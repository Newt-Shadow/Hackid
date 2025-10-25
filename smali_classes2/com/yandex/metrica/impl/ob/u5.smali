.class public Lcom/yandex/metrica/impl/ob/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/O4;

.field private final b:Lcom/yandex/metrica/impl/ob/P4;

.field private final c:Lcom/yandex/metrica/impl/ob/Q4;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/F3;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/O4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/O4;-><init>(Lcom/yandex/metrica/impl/ob/F3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->a:Lcom/yandex/metrica/impl/ob/O4;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/P4;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/P4;-><init>(Lcom/yandex/metrica/impl/ob/F3;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->b:Lcom/yandex/metrica/impl/ob/P4;

    .line 17
    .line 18
    new-instance v0, Lcom/yandex/metrica/impl/ob/Q4;

    .line 19
    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->u()Lcom/yandex/metrica/impl/ob/s2;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/yandex/metrica/impl/ob/Vc;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F3;->b()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/vc;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/vc;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F3;->b()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/H2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-direct {v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Vc;-><init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Q4;-><init>(Lcom/yandex/metrica/impl/ob/F3;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Vc;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->c:Lcom/yandex/metrica/impl/ob/Q4;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/O4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->a:Lcom/yandex/metrica/impl/ob/O4;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/P4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->b:Lcom/yandex/metrica/impl/ob/P4;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/M4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u5;->c:Lcom/yandex/metrica/impl/ob/Q4;

    .line 2
    .line 3
    return-object v0
.end method
