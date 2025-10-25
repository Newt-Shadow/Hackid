.class public final Lcom/yandex/metrica/impl/ob/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dg$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Lcom/yandex/metrica/impl/ob/dg$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLcom/yandex/metrica/impl/ob/dg$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 10
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 11
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/tf;->a([B)Lcom/yandex/metrica/impl/ob/tf;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/tf;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 4
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/tf;->c:J

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 5
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/tf;->b:J

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 6
    iget p1, p1, Lcom/yandex/metrica/impl/ob/tf;->d:I

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dg;->a(I)Lcom/yandex/metrica/impl/ob/dg$a;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    return-void
.end method

.method private a(I)Lcom/yandex/metrica/impl/ob/dg$a;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/yandex/metrica/impl/ob/dg$a;->b:Lcom/yandex/metrica/impl/ob/dg$a;

    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lcom/yandex/metrica/impl/ob/dg$a;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    return-object p1

    .line 13
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/dg$a;->c:Lcom/yandex/metrica/impl/ob/dg$a;

    return-object p1
.end method

.method public static a([B)Lcom/yandex/metrica/impl/ob/dg;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/dg;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/dg;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()[B
    .locals 3

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/tf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/tf;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/tf;->a:Ljava/lang/String;

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/tf;->c:J

    .line 6
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/tf;->b:J

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 9
    :cond_0
    iput v2, v0, Lcom/yandex/metrica/impl/ob/tf;->d:I

    .line 10
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/yandex/metrica/impl/ob/dg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/dg;

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 20
    .line 21
    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 29
    .line 30
    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    return v1

    .line 48
    :cond_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 51
    .line 52
    if-ne v2, p1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    move v0, v1

    .line 56
    :goto_0
    return v0

    .line 57
    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 10
    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    ushr-long v4, v1, v3

    .line 14
    .line 15
    xor-long/2addr v1, v4

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 21
    .line 22
    ushr-long v3, v1, v3

    .line 23
    .line 24
    xor-long/2addr v1, v3

    .line 25
    long-to-int v1, v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    return v0
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
    const-string v1, "ReferrerInfo{installReferrer=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", referrerClickTimestampSeconds="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", installBeginTimestampSeconds="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", source="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x7d

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
