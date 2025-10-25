.class public final Lx4/e0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lx4/e0$c;->a:I

    .line 4
    iput-wide p2, p0, Lx4/e0$c;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLx4/e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lx4/e0$c;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lx4/e0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lx4/e0$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lx4/e0$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lx4/e0$c;->b:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lx4/e0$c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :cond_1
    :goto_0
    return v1
.end method
