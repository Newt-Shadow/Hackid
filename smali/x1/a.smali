.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx1/a;

    invoke-direct {v0}, Lx1/a;-><init>()V

    sput-object v0, Lx1/a;->a:Lx1/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
