.class public final Lhb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhb/b;

.field private static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lhb/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhb/b;->a:Lhb/b;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const-string v3, "ph-no-capture"

    .line 13
    .line 14
    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lid/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lhb/b;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    .line 1
    sget-object v0, Lhb/b;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    return-object v0
.end method
