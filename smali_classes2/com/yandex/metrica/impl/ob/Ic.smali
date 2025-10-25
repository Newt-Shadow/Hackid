.class public Lcom/yandex/metrica/impl/ob/Ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Lb<",
        "Lcom/yandex/metrica/impl/ob/Xb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xb;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xb;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Xb;->a:Lcom/yandex/metrica/impl/ob/Qc;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/Qc;->a:Z

    .line 6
    .line 7
    return p1
.end method
