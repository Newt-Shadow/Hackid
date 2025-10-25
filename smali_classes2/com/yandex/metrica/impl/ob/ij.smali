.class public Lcom/yandex/metrica/impl/ob/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bj;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pi$b;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/pi$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ij;->a:Lcom/yandex/metrica/impl/ob/pi$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ij;->a:Lcom/yandex/metrica/impl/ob/pi$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi$b;->a()Lcom/yandex/metrica/impl/ob/pi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi;->V()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
