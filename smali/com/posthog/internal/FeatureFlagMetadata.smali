.class public final Lcom/posthog/internal/FeatureFlagMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final id:I

.field private final payload:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/internal/FeatureFlagMetadata;ILjava/lang/String;IILjava/lang/Object;)Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/FeatureFlagMetadata;->copy(ILjava/lang/String;I)Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    return v0
.end method

.method public final copy(ILjava/lang/String;I)Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 1

    new-instance v0, Lcom/posthog/internal/FeatureFlagMetadata;

    invoke-direct {v0, p1, p2, p3}, Lcom/posthog/internal/FeatureFlagMetadata;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/internal/FeatureFlagMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/internal/FeatureFlagMetadata;

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    iget v3, p1, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    iget p1, p1, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureFlagMetadata(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
