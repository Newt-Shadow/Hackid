.class public Lcom/yandex/metrica/impl/ob/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/metrica/CounterConfiguration$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/metrica/CounterConfiguration$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/z3;)Lcom/yandex/metrica/impl/ob/i4;
    .locals 7

    .line 2
    new-instance v6, Lcom/yandex/metrica/impl/ob/i4;

    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/A3;->f()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/A3;->g()Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->a()Lcom/yandex/metrica/impl/ob/A3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/A3;->h()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->M()Lcom/yandex/metrica/CounterConfiguration$b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/i4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/metrica/CounterConfiguration$b;)V

    return-object v6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    if-eqz p1, :cond_a

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/yandex/metrica/impl/ob/i4;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_4

    .line 17
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/i4;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    :goto_0
    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    :goto_1
    return v1

    .line 66
    :cond_6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_8

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_8

    .line 82
    .line 83
    :goto_2
    return v1

    .line 84
    :cond_8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 87
    .line 88
    if-ne v2, p1, :cond_9

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_9
    move v0, v1

    .line 92
    :goto_3
    return v0

    .line 93
    :cond_a
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v1

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_2
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
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
    const-string v1, "ClientDescription{mApiKey=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i4;->a:Ljava/lang/String;

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
    const-string v2, ", mPackageName=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", mProcessID="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->c:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", mProcessSessionID=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/i4;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", mReporterType="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i4;->e:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x7d

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
