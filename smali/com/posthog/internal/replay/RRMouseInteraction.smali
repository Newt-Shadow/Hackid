.class public final enum Lcom/posthog/internal/replay/RRMouseInteraction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/replay/RRMouseInteraction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/internal/replay/RRMouseInteraction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum Blur:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum Click:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final Companion:Lcom/posthog/internal/replay/RRMouseInteraction$Companion;

.field public static final enum ContextMenu:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum DblClick:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum Focus:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum MouseDown:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum MouseUp:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum TouchCancel:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum TouchMoveDeparted:Lcom/posthog/internal/replay/RRMouseInteraction;

.field public static final enum TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 11

    sget-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseUp:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v1, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseDown:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v2, Lcom/posthog/internal/replay/RRMouseInteraction;->Click:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v3, Lcom/posthog/internal/replay/RRMouseInteraction;->ContextMenu:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v4, Lcom/posthog/internal/replay/RRMouseInteraction;->DblClick:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v5, Lcom/posthog/internal/replay/RRMouseInteraction;->Focus:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v6, Lcom/posthog/internal/replay/RRMouseInteraction;->Blur:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v7, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v8, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchMoveDeparted:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v9, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    sget-object v10, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchCancel:Lcom/posthog/internal/replay/RRMouseInteraction;

    filled-new-array/range {v0 .. v10}, [Lcom/posthog/internal/replay/RRMouseInteraction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 2
    .line 3
    const-string v1, "MouseUp"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseUp:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 10
    .line 11
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 12
    .line 13
    const-string v1, "MouseDown"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->MouseDown:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 20
    .line 21
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 22
    .line 23
    const-string v1, "Click"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->Click:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 30
    .line 31
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 32
    .line 33
    const-string v1, "ContextMenu"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->ContextMenu:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 40
    .line 41
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 42
    .line 43
    const-string v1, "DblClick"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->DblClick:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 50
    .line 51
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 52
    .line 53
    const-string v1, "Focus"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->Focus:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 60
    .line 61
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 62
    .line 63
    const-string v1, "Blur"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->Blur:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 70
    .line 71
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 72
    .line 73
    const-string v1, "TouchStart"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 80
    .line 81
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 82
    .line 83
    const-string v1, "TouchMoveDeparted"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchMoveDeparted:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 91
    .line 92
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 93
    .line 94
    const-string v1, "TouchEnd"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 102
    .line 103
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 104
    .line 105
    const-string v1, "TouchCancel"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRMouseInteraction;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchCancel:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 113
    .line 114
    invoke-static {}, Lcom/posthog/internal/replay/RRMouseInteraction;->$values()[Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->$VALUES:[Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 119
    .line 120
    new-instance v0, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-direct {v0, v1}, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->Companion:Lcom/posthog/internal/replay/RRMouseInteraction$Companion;

    .line 127
    .line 128
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
    iput p3, p0, Lcom/posthog/internal/replay/RRMouseInteraction;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 1

    const-class v0, Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object p0
.end method

.method public static values()[Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 1

    sget-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->$VALUES:[Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/internal/replay/RRMouseInteraction;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRMouseInteraction;->value:I

    .line 2
    .line 3
    return v0
.end method
