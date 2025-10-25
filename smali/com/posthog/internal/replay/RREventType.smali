.class public final enum Lcom/posthog/internal/replay/RREventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/replay/RREventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/internal/replay/RREventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/internal/replay/RREventType;

.field public static final Companion:Lcom/posthog/internal/replay/RREventType$Companion;

.field public static final enum Custom:Lcom/posthog/internal/replay/RREventType;

.field public static final enum DomContentLoaded:Lcom/posthog/internal/replay/RREventType;

.field public static final enum FullSnapshot:Lcom/posthog/internal/replay/RREventType;

.field public static final enum IncrementalSnapshot:Lcom/posthog/internal/replay/RREventType;

.field public static final enum Load:Lcom/posthog/internal/replay/RREventType;

.field public static final enum Meta:Lcom/posthog/internal/replay/RREventType;

.field public static final enum Plugin:Lcom/posthog/internal/replay/RREventType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/posthog/internal/replay/RREventType;
    .locals 7

    sget-object v0, Lcom/posthog/internal/replay/RREventType;->DomContentLoaded:Lcom/posthog/internal/replay/RREventType;

    sget-object v1, Lcom/posthog/internal/replay/RREventType;->Load:Lcom/posthog/internal/replay/RREventType;

    sget-object v2, Lcom/posthog/internal/replay/RREventType;->FullSnapshot:Lcom/posthog/internal/replay/RREventType;

    sget-object v3, Lcom/posthog/internal/replay/RREventType;->IncrementalSnapshot:Lcom/posthog/internal/replay/RREventType;

    sget-object v4, Lcom/posthog/internal/replay/RREventType;->Meta:Lcom/posthog/internal/replay/RREventType;

    sget-object v5, Lcom/posthog/internal/replay/RREventType;->Custom:Lcom/posthog/internal/replay/RREventType;

    sget-object v6, Lcom/posthog/internal/replay/RREventType;->Plugin:Lcom/posthog/internal/replay/RREventType;

    filled-new-array/range {v0 .. v6}, [Lcom/posthog/internal/replay/RREventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 2
    .line 3
    const-string v1, "DomContentLoaded"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->DomContentLoaded:Lcom/posthog/internal/replay/RREventType;

    .line 10
    .line 11
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 12
    .line 13
    const-string v1, "Load"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->Load:Lcom/posthog/internal/replay/RREventType;

    .line 20
    .line 21
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 22
    .line 23
    const-string v1, "FullSnapshot"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->FullSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 30
    .line 31
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 32
    .line 33
    const-string v1, "IncrementalSnapshot"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->IncrementalSnapshot:Lcom/posthog/internal/replay/RREventType;

    .line 40
    .line 41
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 42
    .line 43
    const-string v1, "Meta"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->Meta:Lcom/posthog/internal/replay/RREventType;

    .line 50
    .line 51
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 52
    .line 53
    const-string v1, "Custom"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->Custom:Lcom/posthog/internal/replay/RREventType;

    .line 60
    .line 61
    new-instance v0, Lcom/posthog/internal/replay/RREventType;

    .line 62
    .line 63
    const-string v1, "Plugin"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RREventType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->Plugin:Lcom/posthog/internal/replay/RREventType;

    .line 70
    .line 71
    invoke-static {}, Lcom/posthog/internal/replay/RREventType;->$values()[Lcom/posthog/internal/replay/RREventType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->$VALUES:[Lcom/posthog/internal/replay/RREventType;

    .line 76
    .line 77
    new-instance v0, Lcom/posthog/internal/replay/RREventType$Companion;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, v1}, Lcom/posthog/internal/replay/RREventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/posthog/internal/replay/RREventType;->Companion:Lcom/posthog/internal/replay/RREventType$Companion;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/posthog/internal/replay/RREventType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/internal/replay/RREventType;
    .locals 1

    const-class v0, Lcom/posthog/internal/replay/RREventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/internal/replay/RREventType;

    return-object p0
.end method

.method public static values()[Lcom/posthog/internal/replay/RREventType;
    .locals 1

    sget-object v0, Lcom/posthog/internal/replay/RREventType;->$VALUES:[Lcom/posthog/internal/replay/RREventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/internal/replay/RREventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RREventType;->value:I

    .line 2
    .line 3
    return v0
.end method
