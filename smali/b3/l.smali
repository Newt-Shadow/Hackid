.class public final synthetic Lb3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/m$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lb3/m$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/l;->a:Lb3/m$a;

    iput p2, p0, Lb3/l;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/l;->a:Lb3/m$a;

    iget v1, p0, Lb3/l;->b:I

    invoke-static {v0, v1}, Lb3/m$a;->a(Lb3/m$a;I)V

    return-void
.end method
