.class public final synthetic Ld4/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld4/g0;

.field public final synthetic b:Lg3/z;


# direct methods
.method public synthetic constructor <init>(Ld4/g0;Lg3/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/f0;->a:Ld4/g0;

    iput-object p2, p0, Ld4/f0;->b:Lg3/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/f0;->a:Ld4/g0;

    iget-object v1, p0, Ld4/f0;->b:Lg3/z;

    invoke-static {v0, v1}, Ld4/g0;->w(Ld4/g0;Lg3/z;)V

    return-void
.end method
