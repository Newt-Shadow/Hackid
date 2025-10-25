.class public final Lg/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lg/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f$d;

    invoke-direct {v0}, Lg/f$d;-><init>()V

    sput-object v0, Lg/f$d;->a:Lg/f$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
