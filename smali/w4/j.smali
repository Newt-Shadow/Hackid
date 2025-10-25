.class public final synthetic Lw4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/m$h$a;


# instance fields
.field public final synthetic a:Lw4/m;

.field public final synthetic b:Lw4/m$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lw4/m;Lw4/m$d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/j;->a:Lw4/m;

    iput-object p2, p0, Lw4/j;->b:Lw4/m$d;

    iput-boolean p3, p0, Lw4/j;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILd4/s0;[I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lw4/j;->a:Lw4/m;

    iget-object v1, p0, Lw4/j;->b:Lw4/m$d;

    iget-boolean v2, p0, Lw4/j;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lw4/m;->q(Lw4/m;Lw4/m$d;ZILd4/s0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
