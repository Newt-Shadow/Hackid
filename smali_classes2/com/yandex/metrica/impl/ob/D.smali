.class Lcom/yandex/metrica/impl/ob/D;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/E$b;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/E$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/E$a;Lcom/yandex/metrica/impl/ob/E$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/D;->b:Lcom/yandex/metrica/impl/ob/E$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/D;->a:Lcom/yandex/metrica/impl/ob/E$b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/D;->b:Lcom/yandex/metrica/impl/ob/E$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/E$a;->a:Lcom/yandex/metrica/impl/ob/E;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/D;->a:Lcom/yandex/metrica/impl/ob/E$b;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/E$b;->b:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/E;->a(Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/E$b$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
