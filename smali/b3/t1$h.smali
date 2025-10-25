.class final Lb3/t1$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field public final a:Lb3/g4;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lb3/g4;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/t1$h;->a:Lb3/g4;

    .line 5
    .line 6
    iput p2, p0, Lb3/t1$h;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lb3/t1$h;->c:J

    .line 9
    .line 10
    return-void
.end method
