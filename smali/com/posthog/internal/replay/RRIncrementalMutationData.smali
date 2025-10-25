.class public final Lcom/posthog/internal/replay/RRIncrementalMutationData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final removes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRRemovedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/posthog/internal/replay/RRIncrementalSource;

.field private final updates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/posthog/internal/replay/RRIncrementalMutationData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRRemovedNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;",
            "Lcom/posthog/internal/replay/RRIncrementalSource;",
            ")V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->adds:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->removes:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->updates:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 7
    sget-object p4, Lcom/posthog/internal/replay/RRIncrementalSource;->Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/replay/RRIncrementalMutationData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;)V

    return-void
.end method


# virtual methods
.method public final getAdds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->adds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemoves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRRemovedNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->removes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMutatedNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMutationData;->updates:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
