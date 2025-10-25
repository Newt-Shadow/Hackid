.class public Lcom/yandex/metrica/impl/ob/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/impl/ob/hl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/zl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/hl$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hl$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/hl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
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
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    const-class v1, Lcom/yandex/metrica/impl/ob/zl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 36
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZIIIIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZIIIII",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/zl;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    move v1, p2

    .line 3
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    move v1, p3

    .line 4
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    move v1, p4

    .line 5
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    move v1, p6

    .line 7
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    move v1, p7

    .line 8
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    move v1, p8

    .line 9
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    move v1, p9

    .line 10
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    move v1, p10

    .line 11
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    move v1, p11

    .line 12
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    move v1, p12

    .line 13
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    move v1, p13

    .line 14
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_11

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/yandex/metrica/impl/ob/hl;

    .line 13
    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 21
    .line 22
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 28
    .line 29
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 30
    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 35
    .line 36
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 37
    .line 38
    if-eq v1, v2, :cond_4

    .line 39
    .line 40
    return v0

    .line 41
    :cond_4
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 42
    .line 43
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 44
    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    return v0

    .line 48
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 49
    .line 50
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 51
    .line 52
    if-eq v1, v2, :cond_6

    .line 53
    .line 54
    return v0

    .line 55
    :cond_6
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 56
    .line 57
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 58
    .line 59
    if-eq v1, v2, :cond_7

    .line 60
    .line 61
    return v0

    .line 62
    :cond_7
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 63
    .line 64
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 65
    .line 66
    if-eq v1, v2, :cond_8

    .line 67
    .line 68
    return v0

    .line 69
    :cond_8
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 70
    .line 71
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 72
    .line 73
    if-eq v1, v2, :cond_9

    .line 74
    .line 75
    return v0

    .line 76
    :cond_9
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 77
    .line 78
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 79
    .line 80
    if-eq v1, v2, :cond_a

    .line 81
    .line 82
    return v0

    .line 83
    :cond_a
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 84
    .line 85
    iget-boolean v2, p1, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 86
    .line 87
    if-eq v1, v2, :cond_b

    .line 88
    .line 89
    return v0

    .line 90
    :cond_b
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 91
    .line 92
    iget v2, p1, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 93
    .line 94
    if-eq v1, v2, :cond_c

    .line 95
    .line 96
    return v0

    .line 97
    :cond_c
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 98
    .line 99
    iget v2, p1, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 100
    .line 101
    if-eq v1, v2, :cond_d

    .line 102
    .line 103
    return v0

    .line 104
    :cond_d
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 105
    .line 106
    iget v2, p1, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 107
    .line 108
    if-eq v1, v2, :cond_e

    .line 109
    .line 110
    return v0

    .line 111
    :cond_e
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 112
    .line 113
    iget v2, p1, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 114
    .line 115
    if-eq v1, v2, :cond_f

    .line 116
    .line 117
    return v0

    .line 118
    :cond_f
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 119
    .line 120
    iget v2, p1, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 121
    .line 122
    if-eq v1, v2, :cond_10

    .line 123
    .line 124
    return v0

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1

    .line 134
    :cond_11
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 46
    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    .line 60
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 61
    .line 62
    add-int/2addr v0, v1

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    .line 65
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 66
    .line 67
    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 71
    .line 72
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
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
    const-string v1, "UiCollectingConfig{textSizeCollecting="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", relativeTextSizeCollecting="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", textVisibilityCollecting="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", textStyleCollecting="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", infoCollecting="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", nonContentViewCollecting="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", textLengthCollecting="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", viewHierarchical="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", ignoreFiltered="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", webViewUrlsCollecting="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", tooLongTextBound="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", truncatedTextBound="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", maxEntitiesCount="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", maxFullContentLength="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", webViewUrlLimit="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", filters="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const/16 v1, 0x7d

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Lcom/yandex/metrica/impl/ob/hl;->k:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Lcom/yandex/metrica/impl/ob/hl;->l:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Lcom/yandex/metrica/impl/ob/hl;->m:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/yandex/metrica/impl/ob/hl;->n:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget p2, p0, Lcom/yandex/metrica/impl/ob/hl;->o:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
