.class public Lcom/yandex/metrica/impl/ob/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/yandex/metrica/impl/ob/O0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/O0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/y2;->b:Lcom/yandex/metrica/impl/ob/O0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/y2;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/R0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y2;->b:Lcom/yandex/metrica/impl/ob/O0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/O0;->b()Lcom/yandex/metrica/impl/ob/N0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/y2;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Lcom/yandex/metrica/f$a;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/yandex/metrica/f$a;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/yandex/metrica/f$a;->b()Lcom/yandex/metrica/f;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/N0;->b(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/M0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
