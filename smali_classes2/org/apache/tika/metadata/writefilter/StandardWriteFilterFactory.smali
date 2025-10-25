.class public Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/metadata/writefilter/MetadataWriteFilterFactory;


# static fields
.field public static DEFAULT_MAX_FIELD_SIZE:I = 0x19000

.field public static DEFAULT_MAX_KEY_SIZE:I = 0x400

.field public static DEFAULT_MAX_VALUES_PER_FIELD:I = 0xa

.field public static DEFAULT_TOTAL_ESTIMATED_BYTES:I = 0xa00000


# instance fields
.field private excludeFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private includeEmpty:Z

.field private includeFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxFieldSize:I

.field private maxKeySize:I

.field private maxTotalEstimatedBytes:I

.field private maxValuesPerField:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeFields:Ljava/util/Set;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->excludeFields:Ljava/util/Set;

    .line 9
    .line 10
    sget v0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->DEFAULT_MAX_KEY_SIZE:I

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxKeySize:I

    .line 13
    .line 14
    sget v0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->DEFAULT_MAX_FIELD_SIZE:I

    .line 15
    .line 16
    iput v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 17
    .line 18
    sget v0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->DEFAULT_TOTAL_ESTIMATED_BYTES:I

    .line 19
    .line 20
    iput v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 21
    .line 22
    sget v0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->DEFAULT_MAX_VALUES_PER_FIELD:I

    .line 23
    .line 24
    iput v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeEmpty:Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getIncludeFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeFields:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxFieldSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxKeySize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxKeySize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxTotalEstimatedBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxValuesPerField()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 2
    .line 3
    return v0
.end method

.method public isIncludeEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeEmpty:Z

    .line 2
    .line 3
    return v0
.end method

.method public newInstance()Lorg/apache/tika/metadata/writefilter/MetadataWriteFilter;
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilter;

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxKeySize:I

    .line 17
    .line 18
    iget v3, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 19
    .line 20
    iget v4, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 21
    .line 22
    iget v5, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 23
    .line 24
    iget-object v6, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeFields:Ljava/util/Set;

    .line 25
    .line 26
    iget-object v7, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->excludeFields:Ljava/util/Set;

    .line 27
    .line 28
    iget-boolean v8, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeEmpty:Z

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v8}, Lorg/apache/tika/metadata/writefilter/StandardWriteFilter;-><init>(IIIILjava/util/Set;Ljava/util/Set;Z)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v1, "max estimated size must be > 0"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v1, "maxValuesPerField must be > 0"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "maxFieldSize must be > 0"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public setExcludeFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->excludeFields:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method public setIncludeEmpty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeEmpty:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIncludeFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeFields:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxKeySize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxKeySize:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxTotalEstimatedBytes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxValuesPerField(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeFields:Ljava/util/Set;

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxKeySize:I

    .line 4
    .line 5
    iget v2, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxFieldSize:I

    .line 6
    .line 7
    iget v3, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxTotalEstimatedBytes:I

    .line 8
    .line 9
    iget v4, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->maxValuesPerField:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lorg/apache/tika/metadata/writefilter/StandardWriteFilterFactory;->includeEmpty:Z

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "StandardWriteFilterFactory{includeFields="

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", maxKeySize="

    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", maxFieldSize="

    .line 35
    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", maxTotalEstimatedBytes="

    .line 43
    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", maxValuesPerField="

    .line 51
    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", includeEmpty="

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "}"

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
