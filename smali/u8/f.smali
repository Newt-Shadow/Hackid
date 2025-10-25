.class public final synthetic Lu8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/h;


# instance fields
.field public final synthetic a:Lu8/g;


# direct methods
.method public synthetic constructor <init>(Lu8/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/f;->a:Lu8/g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/f;->a:Lu8/g;

    check-cast p1, Lu8/i0;

    invoke-static {v0, p1}, Lu8/g;->b(Lu8/g;Lu8/i0;)[B

    move-result-object p1

    return-object p1
.end method
