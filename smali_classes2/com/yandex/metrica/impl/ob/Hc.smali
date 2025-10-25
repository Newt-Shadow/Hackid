.class public Lcom/yandex/metrica/impl/ob/Hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/oc$a;

.field private b:Ljava/lang/Long;

.field private c:J

.field private d:J

.field private e:Landroid/location/Location;

.field private f:Lcom/yandex/metrica/impl/ob/E$b$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/oc$a;JJLandroid/location/Location;Lcom/yandex/metrica/impl/ob/E$b$a;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Hc;->a:Lcom/yandex/metrica/impl/ob/oc$a;

    .line 5
    .line 6
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/Hc;->b:Ljava/lang/Long;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/Hc;->c:J

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/Hc;->d:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Hc;->e:Landroid/location/Location;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Hc;->f:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/E$b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hc;->f:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hc;->b:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Hc;->e:Landroid/location/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hc;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Hc;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "LocationWrapper{collectionMode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->a:Lcom/yandex/metrica/impl/ob/oc$a;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mIncrementalId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->b:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mReceiveTimestamp="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->c:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", mReceiveElapsedRealtime="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->d:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", mLocation="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->e:Landroid/location/Location;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", mChargeType="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Hc;->f:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x7d

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
