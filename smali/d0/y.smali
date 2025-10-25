.class public final synthetic Ld0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Ld0/z;

.field public final synthetic b:Landroidx/lifecycle/i$b;

.field public final synthetic c:Ld0/b0;


# direct methods
.method public synthetic constructor <init>(Ld0/z;Landroidx/lifecycle/i$b;Ld0/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/y;->a:Ld0/z;

    iput-object p2, p0, Ld0/y;->b:Landroidx/lifecycle/i$b;

    iput-object p3, p0, Ld0/y;->c:Ld0/b0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/y;->a:Ld0/z;

    iget-object v1, p0, Ld0/y;->b:Landroidx/lifecycle/i$b;

    iget-object v2, p0, Ld0/y;->c:Ld0/b0;

    invoke-static {v0, v1, v2, p1, p2}, Ld0/z;->a(Ld0/z;Landroidx/lifecycle/i$b;Ld0/b0;Landroidx/lifecycle/m;Landroidx/lifecycle/i$a;)V

    return-void
.end method
