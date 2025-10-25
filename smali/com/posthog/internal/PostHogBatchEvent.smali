.class public final Lcom/posthog/internal/PostHogBatchEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiKey:Ljava/lang/String;
    .annotation runtime Lz8/c;
        value = "api_key"
    .end annotation
.end field

.field private final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private sentAt:Ljava/util/Date;
    .annotation runtime Lz8/c;
        value = "sent_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/internal/PostHogBatchEvent;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILjava/lang/Object;)Lcom/posthog/internal/PostHogBatchEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;->copy(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)Lcom/posthog/internal/PostHogBatchEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)Lcom/posthog/internal/PostHogBatchEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Lcom/posthog/internal/PostHogBatchEvent;"
        }
    .end annotation

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/posthog/internal/PostHogBatchEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/internal/PostHogBatchEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/internal/PostHogBatchEvent;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    iget-object p1, p1, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBatch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSentAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSentAt(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostHogBatchEvent(apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sentAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
