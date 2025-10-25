.class final Ln4/e$c;
.super Lm4/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Le3/h$a;


# direct methods
.method public constructor <init>(Le3/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln4/e$c;->f:Le3/h$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln4/e$c;->f:Le3/h$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Le3/h$a;->a(Le3/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
