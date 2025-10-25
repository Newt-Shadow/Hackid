.class Lm4/f$a;
.super Lm4/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm4/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lm4/f;


# direct methods
.method constructor <init>(Lm4/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm4/f$a;->f:Lm4/f;

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
    iget-object v0, p0, Lm4/f$a;->f:Lm4/f;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lm4/f;->e(Lm4/f;Lm4/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
