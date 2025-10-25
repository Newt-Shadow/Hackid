.class public final Lcom/posthog/internal/replay/RRMutatedNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parentId:Ljava/lang/Integer;

.field private final wireframe:Lcom/posthog/internal/replay/RRWireframe;


# direct methods
.method public constructor <init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "wireframe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/internal/replay/RRMutatedNode;->wireframe:Lcom/posthog/internal/replay/RRWireframe;

    .line 3
    iput-object p2, p0, Lcom/posthog/internal/replay/RRMutatedNode;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getParentId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRMutatedNode;->parentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWireframe()Lcom/posthog/internal/replay/RRWireframe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRMutatedNode;->wireframe:Lcom/posthog/internal/replay/RRWireframe;

    .line 2
    .line 3
    return-object v0
.end method
