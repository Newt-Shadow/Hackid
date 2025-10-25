.class Lcom/yandex/metrica/impl/ob/E2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mm<",
        "Lcom/yandex/metrica/impl/ob/cm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/D2;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/E2;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/E2;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/cm;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/E2;->a:Ljava/lang/Throwable;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E2;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/coreutils/logger/a;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
