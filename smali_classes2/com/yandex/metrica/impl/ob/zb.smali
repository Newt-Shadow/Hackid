.class public Lcom/yandex/metrica/impl/ob/zb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ub;

.field private final b:Lcom/yandex/metrica/impl/ob/ub;

.field private final c:Lcom/yandex/metrica/impl/ob/ub;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ub;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ub;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/ub;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ub;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/ub;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ub;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/zb;-><init>(Lcom/yandex/metrica/impl/ob/ub;Lcom/yandex/metrica/impl/ob/ub;Lcom/yandex/metrica/impl/ob/ub;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ub;Lcom/yandex/metrica/impl/ob/ub;Lcom/yandex/metrica/impl/ob/ub;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zb;->a:Lcom/yandex/metrica/impl/ob/ub;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/zb;->b:Lcom/yandex/metrica/impl/ob/ub;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/zb;->c:Lcom/yandex/metrica/impl/ob/ub;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zb;->a:Lcom/yandex/metrica/impl/ob/ub;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zb;->b:Lcom/yandex/metrica/impl/ob/ub;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zb;->c:Lcom/yandex/metrica/impl/ob/ub;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AdvertisingIdsHolder{mGoogle="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/zb;->a:Lcom/yandex/metrica/impl/ob/ub;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mHuawei="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/zb;->b:Lcom/yandex/metrica/impl/ob/ub;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", yandex="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/zb;->c:Lcom/yandex/metrica/impl/ob/ub;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
