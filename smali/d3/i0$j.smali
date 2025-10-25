.class final Ld3/i0$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field public final a:Lb3/l3;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method private constructor <init>(Lb3/l3;ZJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld3/i0$j;->a:Lb3/l3;

    .line 4
    iput-boolean p2, p0, Ld3/i0$j;->b:Z

    .line 5
    iput-wide p3, p0, Ld3/i0$j;->c:J

    .line 6
    iput-wide p5, p0, Ld3/i0$j;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lb3/l3;ZJJLd3/i0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ld3/i0$j;-><init>(Lb3/l3;ZJJ)V

    return-void
.end method
