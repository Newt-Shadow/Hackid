.class abstract Lcom/yandex/metrica/impl/ob/K3$k;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "k"
.end annotation


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/Id;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Id;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K3$k;->b:Lcom/yandex/metrica/impl/ob/Id;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Lcom/yandex/metrica/impl/ob/Id;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$k;->b:Lcom/yandex/metrica/impl/ob/Id;

    .line 2
    .line 3
    return-object v0
.end method
