.class public Lcom/yandex/metrica/impl/ob/tg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jg;

.field private final b:Lcom/yandex/metrica/impl/ob/sg$a;

.field private final c:Lcom/yandex/metrica/impl/ob/hg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/jg;Lcom/yandex/metrica/impl/ob/sg$a;Lcom/yandex/metrica/impl/ob/hg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tg;->a:Lcom/yandex/metrica/impl/ob/jg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/tg;->b:Lcom/yandex/metrica/impl/ob/sg$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/tg;->c:Lcom/yandex/metrica/impl/ob/hg;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tg;->a:Lcom/yandex/metrica/impl/ob/jg;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/jg;->a(Lcom/yandex/metrica/impl/ob/dg;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/tg;->b:Lcom/yandex/metrica/impl/ob/sg$a;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/sg$a;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/tg;->c:Lcom/yandex/metrica/impl/ob/hg;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/hg;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
