.class public final Lcom/yandex/metrica/impl/ob/ng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mg$a;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/mg$b;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mg$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ng;->a:Lcom/yandex/metrica/impl/ob/mg$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ng;->a:Lcom/yandex/metrica/impl/ob/mg$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/mg$b;->a:Lcom/yandex/metrica/impl/ob/mg;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/mg;->d(Lcom/yandex/metrica/impl/ob/mg;)Lcom/yandex/metrica/impl/ob/gg;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/yandex/metrica/impl/ob/ng$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/ng$a;-><init>(Lcom/yandex/metrica/impl/ob/ng;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gg;->a(Lcom/yandex/metrica/impl/ob/vg;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
