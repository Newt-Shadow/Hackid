.class public final Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final pointerType:I

.field private final positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/posthog/internal/replay/RRIncrementalSource;

.field private final type:Lcom/posthog/internal/replay/RRMouseInteraction;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/posthog/internal/replay/RRMouseInteraction;",
            "II",
            "Lcom/posthog/internal/replay/RRIncrementalSource;",
            "I",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->id:I

    .line 3
    iput-object p2, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->type:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 4
    iput p3, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->x:I

    .line 5
    iput p4, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->y:I

    .line 6
    iput-object p5, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 7
    iput p6, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->pointerType:I

    .line 8
    iput-object p7, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->positions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 10
    invoke-direct/range {v1 .. v8}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;-><init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPointerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->pointerType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/internal/replay/RRMousePosition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->positions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->source:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->type:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public final getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;->y:I

    .line 2
    .line 3
    return v0
.end method
