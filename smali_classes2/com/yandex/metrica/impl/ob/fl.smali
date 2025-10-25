.class public Lcom/yandex/metrica/impl/ob/fl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/impl/ob/fl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/yandex/metrica/impl/ob/wl;

.field public final f:Lcom/yandex/metrica/impl/ob/hl;

.field public final g:Lcom/yandex/metrica/impl/ob/hl;

.field public final h:Lcom/yandex/metrica/impl/ob/hl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/fl$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fl$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/fl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 24
    const-class v0, Lcom/yandex/metrica/impl/ob/wl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/wl;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 25
    const-class v0, Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hl;

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/hl;

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v0

    iget-boolean v2, v0, Lcom/yandex/metrica/impl/ob/Sh;->j:Z

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v0

    iget-boolean v3, v0, Lcom/yandex/metrica/impl/ob/Sh;->l:Z

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v0

    iget-boolean v4, v0, Lcom/yandex/metrica/impl/ob/Sh;->k:Z

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v0

    iget-boolean v5, v0, Lcom/yandex/metrica/impl/ob/Sh;->m:Z

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->T()Lcom/yandex/metrica/impl/ob/wl;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->S()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object v7

    .line 7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->R()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object v8

    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->U()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object v9

    move-object v1, p0

    .line 9
    invoke-direct/range {v1 .. v9}, Lcom/yandex/metrica/impl/ob/fl;-><init>(ZZZZLcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/hl;)V

    return-void
.end method

.method public constructor <init>(ZZZZLcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/hl;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 12
    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 13
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 14
    iput-boolean p4, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 15
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 16
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 17
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 18
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    if-eqz p1, :cond_e

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/yandex/metrica/impl/ob/fl;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/fl;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 23
    .line 24
    if-eq v2, v3, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 30
    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 37
    .line 38
    if-eq v2, v3, :cond_4

    .line 39
    .line 40
    return v1

    .line 41
    :cond_4
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 44
    .line 45
    if-eq v2, v3, :cond_5

    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 49
    .line 50
    if-eqz v2, :cond_6

    .line 51
    .line 52
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/wl;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_7

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 62
    .line 63
    if-eqz v2, :cond_7

    .line 64
    .line 65
    :goto_0
    return v1

    .line 66
    :cond_7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 67
    .line 68
    if-eqz v2, :cond_8

    .line 69
    .line 70
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/hl;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_9

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 80
    .line 81
    if-eqz v2, :cond_9

    .line 82
    .line 83
    :goto_1
    return v1

    .line 84
    :cond_9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 85
    .line 86
    if-eqz v2, :cond_a

    .line 87
    .line 88
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/hl;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_b

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_a
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 98
    .line 99
    if-eqz v2, :cond_b

    .line 100
    .line 101
    :goto_2
    return v1

    .line 102
    :cond_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 103
    .line 104
    if-eqz v2, :cond_c

    .line 105
    .line 106
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/hl;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    goto :goto_3

    .line 113
    :cond_c
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 114
    .line 115
    if-nez p1, :cond_d

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_d
    move v0, v1

    .line 119
    :goto_3
    return v0

    .line 120
    :cond_e
    :goto_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/wl;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v2

    .line 31
    :goto_0
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hl;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_1
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hl;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v1, v2

    .line 57
    :goto_2
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hl;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_3
    add-int/2addr v0, v2

    .line 69
    return v0
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
    const-string v1, "UiAccessConfig{uiParsingEnabled="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", uiEventSendingEnabled="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", uiCollectingForBridgeEnabled="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", uiRawEventSendingEnabled="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", uiParsingConfig="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", uiEventSendingConfig="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", uiCollectingForBridgeConfig="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", uiRawEventSendingConfig="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x7d

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Z

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->b:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->c:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fl;->d:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
