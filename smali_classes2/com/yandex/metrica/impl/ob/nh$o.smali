.class Lcom/yandex/metrica/impl/ob/nh$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/nh;->reportRevenue(Lcom/yandex/metrica/Revenue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/Revenue;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/nh;Lcom/yandex/metrica/Revenue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nh$o;->a:Lcom/yandex/metrica/Revenue;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nh$o;->a:Lcom/yandex/metrica/Revenue;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/yandex/metrica/IReporter;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
