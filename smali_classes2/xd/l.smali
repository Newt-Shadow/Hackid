.class final Lxd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/e;


# static fields
.field public static final a:Lxd/l;

.field private static final b:Lad/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxd/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lxd/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxd/l;->a:Lxd/l;

    .line 7
    .line 8
    sget-object v0, Lad/j;->a:Lad/j;

    .line 9
    .line 10
    sput-object v0, Lxd/l;->b:Lad/i;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lad/i;
    .locals 1

    .line 1
    sget-object v0, Lxd/l;->b:Lad/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method
