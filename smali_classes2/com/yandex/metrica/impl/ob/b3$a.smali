.class Lcom/yandex/metrica/impl/ob/b3$a;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/b3;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzb/d;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/b3;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/b3;Lzb/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b3$a;->b:Lcom/yandex/metrica/impl/ob/b3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/b3$a;->a:Lzb/d;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b3$a;->b:Lcom/yandex/metrica/impl/ob/b3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b3;->a(Lcom/yandex/metrica/impl/ob/b3;)Lcom/yandex/metrica/impl/ob/S3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/b3$a;->b:Lcom/yandex/metrica/impl/ob/b3;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/b3$a;->a:Lzb/d;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/yandex/metrica/impl/ob/h3;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/h3;-><init>(Lzb/d;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/yandex/metrica/impl/ob/c0;->a()Lcom/yandex/metrica/impl/ob/c0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/h3;->a()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/c0;->a([B)Lcom/yandex/metrica/impl/ob/c0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/S3;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
