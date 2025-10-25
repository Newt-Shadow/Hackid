.class public final Lud/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/d;->h(JLtd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltd/l;

.field final synthetic b:Lud/d;


# direct methods
.method public constructor <init>(Ltd/l;Lud/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lud/d$a;->a:Ltd/l;

    iput-object p2, p0, Lud/d$a;->b:Lud/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lud/d$a;->a:Ltd/l;

    .line 2
    .line 3
    iget-object v1, p0, Lud/d$a;->b:Lud/d;

    .line 4
    .line 5
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ltd/l;->i(Ltd/i0;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
