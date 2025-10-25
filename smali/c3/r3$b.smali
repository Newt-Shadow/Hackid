.class final Lc3/r3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/r3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lb3/x1;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb3/x1;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc3/r3$b;->a:Lb3/x1;

    .line 5
    .line 6
    iput p2, p0, Lc3/r3$b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lc3/r3$b;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
