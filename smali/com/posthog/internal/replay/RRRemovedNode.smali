.class public final Lcom/posthog/internal/replay/RRRemovedNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final parentId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/posthog/internal/replay/RRRemovedNode;->id:I

    .line 3
    iput-object p2, p0, Lcom/posthog/internal/replay/RRRemovedNode;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/internal/replay/RRRemovedNode;-><init>(ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRRemovedNode;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getParentId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRRemovedNode;->parentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method
