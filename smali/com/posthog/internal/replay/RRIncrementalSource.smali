.class public final enum Lcom/posthog/internal/replay/RRIncrementalSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/internal/replay/RRIncrementalSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/internal/replay/RRIncrementalSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum AdoptedStyleSheet:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum CanvasMutation:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final Companion:Lcom/posthog/internal/replay/RRIncrementalSource$Companion;

.field public static final enum CustomElement:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Drag:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Font:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Input:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Log:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum MediaInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum MouseMove:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Scroll:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum Selection:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum StyleDeclaration:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum StyleSheetRule:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum TouchMove:Lcom/posthog/internal/replay/RRIncrementalSource;

.field public static final enum ViewportResize:Lcom/posthog/internal/replay/RRIncrementalSource;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 17

    sget-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v1, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v2, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v3, Lcom/posthog/internal/replay/RRIncrementalSource;->Scroll:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v4, Lcom/posthog/internal/replay/RRIncrementalSource;->ViewportResize:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v5, Lcom/posthog/internal/replay/RRIncrementalSource;->Input:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v6, Lcom/posthog/internal/replay/RRIncrementalSource;->TouchMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v7, Lcom/posthog/internal/replay/RRIncrementalSource;->MediaInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v8, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleSheetRule:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v9, Lcom/posthog/internal/replay/RRIncrementalSource;->CanvasMutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v10, Lcom/posthog/internal/replay/RRIncrementalSource;->Font:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v11, Lcom/posthog/internal/replay/RRIncrementalSource;->Log:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v12, Lcom/posthog/internal/replay/RRIncrementalSource;->Drag:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v13, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleDeclaration:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v14, Lcom/posthog/internal/replay/RRIncrementalSource;->Selection:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v15, Lcom/posthog/internal/replay/RRIncrementalSource;->AdoptedStyleSheet:Lcom/posthog/internal/replay/RRIncrementalSource;

    sget-object v16, Lcom/posthog/internal/replay/RRIncrementalSource;->CustomElement:Lcom/posthog/internal/replay/RRIncrementalSource;

    filled-new-array/range {v0 .. v16}, [Lcom/posthog/internal/replay/RRIncrementalSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 2
    .line 3
    const-string v1, "Mutation"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Mutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 10
    .line 11
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 12
    .line 13
    const-string v1, "MouseMove"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 20
    .line 21
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 22
    .line 23
    const-string v1, "MouseInteraction"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->MouseInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 30
    .line 31
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 32
    .line 33
    const-string v1, "Scroll"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Scroll:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 40
    .line 41
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 42
    .line 43
    const-string v1, "ViewportResize"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->ViewportResize:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 50
    .line 51
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 52
    .line 53
    const-string v1, "Input"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Input:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 60
    .line 61
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 62
    .line 63
    const-string v1, "TouchMove"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->TouchMove:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 70
    .line 71
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 72
    .line 73
    const-string v1, "MediaInteraction"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->MediaInteraction:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 80
    .line 81
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 82
    .line 83
    const-string v1, "StyleSheetRule"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleSheetRule:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 91
    .line 92
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 93
    .line 94
    const-string v1, "CanvasMutation"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->CanvasMutation:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 102
    .line 103
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 104
    .line 105
    const-string v1, "Font"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Font:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 113
    .line 114
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 115
    .line 116
    const-string v1, "Log"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Log:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 124
    .line 125
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 126
    .line 127
    const-string v1, "Drag"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Drag:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 135
    .line 136
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 137
    .line 138
    const-string v1, "StyleDeclaration"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->StyleDeclaration:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 146
    .line 147
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 148
    .line 149
    const-string v1, "Selection"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Selection:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 157
    .line 158
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 159
    .line 160
    const-string v1, "AdoptedStyleSheet"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->AdoptedStyleSheet:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 168
    .line 169
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 170
    .line 171
    const-string v1, "CustomElement"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2, v2}, Lcom/posthog/internal/replay/RRIncrementalSource;-><init>(Ljava/lang/String;II)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->CustomElement:Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 179
    .line 180
    invoke-static {}, Lcom/posthog/internal/replay/RRIncrementalSource;->$values()[Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->$VALUES:[Lcom/posthog/internal/replay/RRIncrementalSource;

    .line 185
    .line 186
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalSource$Companion;

    .line 187
    .line 188
    const/4 v1, 0x0

    .line 189
    invoke-direct {v0, v1}, Lcom/posthog/internal/replay/RRIncrementalSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    .line 191
    .line 192
    sput-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->Companion:Lcom/posthog/internal/replay/RRIncrementalSource$Companion;

    .line 193
    .line 194
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
    iput p3, p0, Lcom/posthog/internal/replay/RRIncrementalSource;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 1

    const-class v0, Lcom/posthog/internal/replay/RRIncrementalSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object p0
.end method

.method public static values()[Lcom/posthog/internal/replay/RRIncrementalSource;
    .locals 1

    sget-object v0, Lcom/posthog/internal/replay/RRIncrementalSource;->$VALUES:[Lcom/posthog/internal/replay/RRIncrementalSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/internal/replay/RRIncrementalSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/internal/replay/RRIncrementalSource;->value:I

    .line 2
    .line 3
    return v0
.end method
