.class Lm4/g$a;
.super Lm4/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm4/g;->x()Lm4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lm4/g;


# direct methods
.method constructor <init>(Lm4/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm4/g$a;->f:Lm4/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lm4/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/g$a;->f:Lm4/g;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lm4/g;->v(Lm4/g;Le3/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
