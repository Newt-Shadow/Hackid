.class public Lcom/yandex/metrica/impl/ob/sn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/wn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/wn<",
        "TT;>;"
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
.method public get(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/zn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/yandex/metrica/impl/ob/zn<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/zn;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/zn$a;->a:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
