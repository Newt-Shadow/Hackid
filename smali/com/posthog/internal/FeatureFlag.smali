.class public final Lcom/posthog/internal/FeatureFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final enabled:Z

.field private final key:Ljava/lang/String;

.field private final metadata:Lcom/posthog/internal/FeatureFlagMetadata;

.field private final reason:Lcom/posthog/internal/EvaluationReason;

.field private final variant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/posthog/internal/FeatureFlagMetadata;Lcom/posthog/internal/EvaluationReason;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "metadata"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    .line 17
    .line 18
    iput-object p3, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/internal/FeatureFlag;Ljava/lang/String;ZLjava/lang/String;Lcom/posthog/internal/FeatureFlagMetadata;Lcom/posthog/internal/EvaluationReason;ILjava/lang/Object;)Lcom/posthog/internal/FeatureFlag;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/posthog/internal/FeatureFlag;->copy(Ljava/lang/String;ZLjava/lang/String;Lcom/posthog/internal/FeatureFlagMetadata;Lcom/posthog/internal/EvaluationReason;)Lcom/posthog/internal/FeatureFlag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    return-object v0
.end method

.method public final component5()Lcom/posthog/internal/EvaluationReason;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/String;Lcom/posthog/internal/FeatureFlagMetadata;Lcom/posthog/internal/EvaluationReason;)Lcom/posthog/internal/FeatureFlag;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/posthog/internal/FeatureFlag;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/posthog/internal/FeatureFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/posthog/internal/FeatureFlagMetadata;Lcom/posthog/internal/EvaluationReason;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/internal/FeatureFlag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/internal/FeatureFlag;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    iget-boolean v3, p1, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    iget-object v3, p1, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    iget-object p1, p1, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReason()Lcom/posthog/internal/EvaluationReason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVariant()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlagMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/posthog/internal/EvaluationReason;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureFlag(key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/posthog/internal/FeatureFlag;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->metadata:Lcom/posthog/internal/FeatureFlagMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlag;->reason:Lcom/posthog/internal/EvaluationReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
